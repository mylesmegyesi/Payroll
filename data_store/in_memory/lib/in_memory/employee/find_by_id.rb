require 'in_memory/transaction'

module InMemory
  module Employee
    class FindByID < Transaction

      def execute(id)
        self.class.get_bucket(:employee).select { | employee |
          return employee if employee.id == id
        }
        nil
      end

    end
  end
end
