=begin
#BitMEX API

### REST API for the BitMEX Trading Platform  [View Changelog](/app/apiChangelog)    #### Getting Started   ##### Fetching Data  All REST endpoints are documented below. You can try out any query right from this interface.  Most table queries accept `count`, `start`, and `reverse` params. Set `reverse=true` to get rows newest-first.  Additional documentation regarding filters, timestamps, and authentication is available in [the main API documentation](https://www.bitmex.com/app/restAPI).  *All* table data is available via the [Websocket](/app/wsAPI). We highly recommend using the socket if you want to have the quickest possible data without being subject to ratelimits.  ##### Return Types  By default, all data is returned as JSON. Send `?_format=csv` to get CSV data or `?_format=xml` to get XML data.  ##### Trade Data Queries  *This is only a small subset of what is available, to get you started.*  Fill in the parameters and click the `Try it out!` button to try any of these queries.  * [Pricing Data](#!/Quote/Quote_get)  * [Trade Data](#!/Trade/Trade_get)  * [OrderBook Data](#!/OrderBook/OrderBook_getL2)  * [Settlement Data](#!/Settlement/Settlement_get)  * [Exchange Statistics](#!/Stats/Stats_history)  Every function of the BitMEX.com platform is exposed here and documented. Many more functions are available.  ##### Swagger Specification  [⇩ Download Swagger JSON](swagger.json)    ## All API Endpoints  Click to expand a section. 

OpenAPI spec version: 1.2.0
Contact: support@bitmex.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'date'

module SwaggerClient

  class TradeBin
    attr_accessor :timestamp

    attr_accessor :symbol

    attr_accessor :open

    attr_accessor :high

    attr_accessor :low

    attr_accessor :close

    attr_accessor :trades

    attr_accessor :volume

    attr_accessor :vwap

    attr_accessor :last_size

    attr_accessor :turnover

    attr_accessor :home_notional

    attr_accessor :foreign_notional


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'timestamp' => :'timestamp',
        :'symbol' => :'symbol',
        :'open' => :'open',
        :'high' => :'high',
        :'low' => :'low',
        :'close' => :'close',
        :'trades' => :'trades',
        :'volume' => :'volume',
        :'vwap' => :'vwap',
        :'last_size' => :'lastSize',
        :'turnover' => :'turnover',
        :'home_notional' => :'homeNotional',
        :'foreign_notional' => :'foreignNotional'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'timestamp' => :'DateTime',
        :'symbol' => :'String',
        :'open' => :'Float',
        :'high' => :'Float',
        :'low' => :'Float',
        :'close' => :'Float',
        :'trades' => :'Float',
        :'volume' => :'Float',
        :'vwap' => :'Float',
        :'last_size' => :'Float',
        :'turnover' => :'Float',
        :'home_notional' => :'Float',
        :'foreign_notional' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.has_key?(:'open')
        self.open = attributes[:'open']
      end

      if attributes.has_key?(:'high')
        self.high = attributes[:'high']
      end

      if attributes.has_key?(:'low')
        self.low = attributes[:'low']
      end

      if attributes.has_key?(:'close')
        self.close = attributes[:'close']
      end

      if attributes.has_key?(:'trades')
        self.trades = attributes[:'trades']
      end

      if attributes.has_key?(:'volume')
        self.volume = attributes[:'volume']
      end

      if attributes.has_key?(:'vwap')
        self.vwap = attributes[:'vwap']
      end

      if attributes.has_key?(:'lastSize')
        self.last_size = attributes[:'lastSize']
      end

      if attributes.has_key?(:'turnover')
        self.turnover = attributes[:'turnover']
      end

      if attributes.has_key?(:'homeNotional')
        self.home_notional = attributes[:'homeNotional']
      end

      if attributes.has_key?(:'foreignNotional')
        self.foreign_notional = attributes[:'foreignNotional']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @timestamp.nil?
        invalid_properties.push("invalid value for 'timestamp', timestamp cannot be nil.")
      end

      if @symbol.nil?
        invalid_properties.push("invalid value for 'symbol', symbol cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @timestamp.nil?
      return false if @symbol.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          timestamp == o.timestamp &&
          symbol == o.symbol &&
          open == o.open &&
          high == o.high &&
          low == o.low &&
          close == o.close &&
          trades == o.trades &&
          volume == o.volume &&
          vwap == o.vwap &&
          last_size == o.last_size &&
          turnover == o.turnover &&
          home_notional == o.home_notional &&
          foreign_notional == o.foreign_notional
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [timestamp, symbol, open, high, low, close, trades, volume, vwap, last_size, turnover, home_notional, foreign_notional].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
