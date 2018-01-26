class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|

      #t.belongs_to :user
      t.references :user, null: false, foreign_key: { name: 'user_on_jobs' }

      t.string     :title,          null: false
      t.text       :description,    null: false
      t.integer    :salary_average
      t.string     :company_name

      t.timestamps
    end
  end
end
