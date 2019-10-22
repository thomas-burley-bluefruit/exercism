class TwoFer
  def self.two_fer(*args)
      case args.size
      when 0
        return "One for you, one for me."
      when 1
        return "One for " + args[0] + ", one for me."
      end
  end
end
