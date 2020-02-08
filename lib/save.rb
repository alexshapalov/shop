require 'csv'

class TransactionData
  def initialize(iso, mid, reference_id, transaction_id, approval, processed_date, type)
    @ISO = iso
    @MID = mid
    @Reference_ID = reference_id
    @Transaction_ID =	transaction_id
    @Approval = approval
    @Processed_Date = processed_date
    @Type = type
  end

  def save
    puts "Saving data"
    save_data_in_file
  end

  private 

  def save_data_in_file

    @date = Time.now.strftime("%Y%m%d %H:%M:%S")

      csv << ["ISO", "MID", "Reference ID", "data", "Transaction_ID", "Approval",  "Processed_Date", "Type"] 
      csv << [@ISO, @MID, @Reference_ID, @Transaction_ID, @Approval, @Processed_Date, @Type]  
    end 
  end
end

TransactionData.new(
  "dwd",
  'mid',
  120409168745,
  "zoMQOJ4EWQEUw0hz-XBKrA",
  203657,
  "06/07/2018 20:36:57",
  "Purchase"
).save
