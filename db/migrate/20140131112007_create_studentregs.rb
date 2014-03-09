class CreateStudentregs < ActiveRecord::Migration
  def change
    create_table :studentregs do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.text :address
      t.datepicker :dateofbirth
      t.string :grade
      t.string :division
      t.string :gender
      t.string :contactnumber
      t.string :bloodgroup
      t.datepicker :dateofjoining
      t.string :fname
      t.string :fqualification
      t.string :foccupation
      t.string :fincome
      t.string :fcontactnumber
      t.string :femailid
      t.string :mname
      t.string :mqualification
      t.string :moccupation
      t.string :mincome
      t.string :mcontactnumber
      t.string :memailid

      t.timestamps
    end
  end
end
