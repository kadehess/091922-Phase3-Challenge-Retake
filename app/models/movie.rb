class Movie < ActiveRecord::Base

    has_many :roles
    has_many :actors, through: :roles


def cast_role(actor,character_name,salary)

    Role.create(salary: salary, character_name:character_name, movie_id:self.id, actor_id:actor.id )
end

def all_credits

    self.roles.map do |role|
        "#{role.character_name}: Played by #{role.actor.name}"
    end
end

  def fire_actor(actor)
      access_role=self.roles.find do |role|
          role.actor_id== actor.id
      end
       access_role.destroy

  end
end