class RLabel
	attr_accessor :data, :paddingTop, :paddingLR, :title, :author, :subject, :creator, :producer

	def initialize()
		defineLabels
		definePapers
		@data=[]
		@paddingTop=0.4
		@paddingLR=0.4
		@title = "Labels"
		@author = "RLabel"
		@subject = "RLabel"
		@creator = "RLabel/Rghost"
		@producer = "RLabel/Rghost"
		RGhost::Config::GS[:unit]=RGhost::Units::Cm
	end
	
	def manufacturer(name)
		raise "This manufacturer does not exist" unless @labels.include?(name)
		@manufacturer=name
	end

#	def manufacturer
#		@labels.
#	end
	
	def model(name)
		raise "The manufacturer is not set" unless @manufacturer
		raise "This model does not exist in #{@manufacturer}" unless @labels[@manufacturer].include?(name)
		@model=name
	end

	def addLabel(data)
		@data << data
	end	

	def demoData
		@data=[]
		for data in 1..@labels[@manufacturer][@model][:cols]*@labels[@manufacturer][@model][:rows]
			@data << ['Paulo Luiz Silva Pinto de Oliveira','Av Geovana Batista Pirelli, 1198 - Apto 889','Boa Vista - São Vicente - SP','Cep 11400-090']
		end
	end
	
	def save(name)
		render(name,:original,:normal)
	end

	def saveDraft(name)
		render(name,:draft,:normal)
	end

	def stream(name)
		render(name,:original,:stream)
	end

	def streamDraft(name)
		render(name,:draft,:stream)
	end

private
	def formatedData(num)
		for data in 0..@data[num].size-1
			txt += "<br/>#{@data[num][data]}" unless data==0
			txt = "<b>#{@data[num][data]}</b>" if data==0
		end
		txt
	end

	def variables
		@paperHeight=@paper_types[@labels[@manufacturer][@model][:paper]][:height]
		@marginTop=@labels[@manufacturer][@model][:margin_top]
		@marginLeft=@labels[@manufacturer][@model][:margin_left]
		@distHeight=@labels[@manufacturer][@model][:dist_vert]
		@distWidth=@labels[@manufacturer][@model][:dist_horiz]
		@labelWidth=@labels[@manufacturer][@model][:width]
		@labelHeight=@labels[@manufacturer][@model][:height]
	end

	def defineLabels
		@labels={}
		@labels.merge!(:pimaco => {})
		@labels[:pimaco].merge!(:P3080  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.48,:dist_vert=> 2.54 ,:dist_horiz=> 6.98 , :height=> 2.54 , :width=> 6.67 , :cols => 3, :rows => 10})
		@labels[:pimaco].merge!(:P3081  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.40,:dist_vert=> 2.54 ,:dist_horiz=> 10.68, :height=> 2.54 , :width=> 10.16, :cols => 2, :rows => 10})
		@labels[:pimaco].merge!(:P3082  =>{:paper=> :letter,:margin_top=> 2.12,:margin_left=> 0.40,:dist_vert=> 3.39 ,:dist_horiz=> 10.68, :height=> 3.39 , :width=> 10.16, :cols => 2, :rows => 7 })
		@labels[:pimaco].merge!(:P5580A =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.48,:dist_vert=> 2.54 ,:dist_horiz=> 6.38 , :height=> 2.54 , :width=> 6.67 , :cols => 3, :rows => 10})
		@labels[:pimaco].merge!(:P6080  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.48,:dist_vert=> 2.54 ,:dist_horiz=> 6.98 , :height=> 2.54 , :width=> 6.67 , :cols => 3, :rows => 10})
		@labels[:pimaco].merge!(:P6081  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.40,:dist_vert=> 2.54 ,:dist_horiz=> 10.68, :height=> 2.54 , :width=> 10.16, :cols => 2, :rows => 10})
		@labels[:pimaco].merge!(:P6082  =>{:paper=> :letter,:margin_top=> 2.12,:margin_left=> 0.40,:dist_vert=> 3.39 ,:dist_horiz=> 10.68, :height=> 3.39 , :width=> 10.16, :cols => 2, :rows => 7 })
		@labels[:pimaco].merge!(:P6083  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.40,:dist_vert=> 4.08 ,:dist_horiz=> 10.68, :height=> 5.08 , :width=> 10.16, :cols => 2, :rows => 5 })
		@labels[:pimaco].merge!(:P6184  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.40,:dist_vert=> 8.47 ,:dist_horiz=> 10.68, :height=> 8.47 , :width=> 10.16, :cols => 2, :rows => 3 })
		@labels[:pimaco].merge!(:P6085  =>{:paper=> :letter,:margin_top=> 0   ,:margin_left=> 0   ,:dist_vert=> 0    ,:dist_horiz=> 0    , :height=> 27.94, :width=> 21.59, :cols => 1, :rows => 1 })
		@labels[:pimaco].merge!(:P6286  =>{:paper=> :letter,:margin_top=> 0.16,:margin_left=> 0.16,:dist_vert=> 13.81,:dist_horiz=> 0    , :height=> 13.81, :width=> 21.27, :cols => 1, :rows => 2 })
		@labels[:pimaco].merge!(:P6087  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 1.45,:dist_vert=> 1.27 ,:dist_horiz=> 4.75 , :height=> 1.27 , :width=> 4.44 , :cols => 4, :rows => 20})
		@labels[:pimaco].merge!(:P6288  =>{:paper=> :letter,:margin_top=> 0.16,:margin_left=> 0.16,:dist_vert=> 13.81,:dist_horiz=> 10.64, :height=> 13.81, :width=> 10.64, :cols => 2, :rows => 2 })
		@labels[:pimaco].merge!(:P6089  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 1.45,:dist_vert=> 1.69 ,:dist_horiz=> 4.75 , :height=> 1.69 , :width=> 4.44 , :cols => 4, :rows => 15})
		@labels[:pimaco].merge!(:P6093  =>{:paper=> :letter,:margin_top=> 1.51,:margin_left=> 1.45,:dist_vert=> 4.41 ,:dist_horiz=> 5.20 , :height=> 2.74 , :width=> 3.10 , :cols => 4, :rows => 6 })
		@labels[:pimaco].merge!(:P6095  =>{:paper=> :letter,:margin_top=> 2.12,:margin_left=> 1.70,:dist_vert=> 5.93 ,:dist_horiz=> 9.63 , :height=> 5.93 , :width=> 8.57 , :cols => 2, :rows => 4 })
		@labels[:pimaco].merge!(:P8296  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 0.32,:dist_vert=> 7.62 ,:dist_horiz=> 6.98 , :height=> 6.68 , :width=> 6.98 , :cols => 3, :rows => 3 })
		@labels[:pimaco].merge!(:P8098  =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 1.27,:dist_vert=> 4.23 ,:dist_horiz=> 10.16, :height=> 4.23 , :width=> 8.89 , :cols => 2, :rows => 6 })
		@labels[:pimaco].merge!(:P8099F =>{:paper=> :letter,:margin_top=> 2.33,:margin_left=> 2.72,:dist_vert=> 4.66 ,:dist_horiz=> 8.38 , :height=> 4.66 , :width=> 7.78 , :cols => 2, :rows => 5 })
		@labels[:pimaco].merge!(:P8099L =>{:paper=> :letter,:margin_top=> 1.27,:margin_left=> 3.41,:dist_vert=> 1.69 ,:dist_horiz=> 0    , :height=> 1.69 , :width=> 14.76, :cols => 1, :rows => 15})
		#		@labels[:pimaco].merge!()
	end

	def definePapers
		@paper_types={}
		@paper_types[:A4] = {:width => 21.0, :height=> 29.7}
		@paper_types[:letter] = {:width => 21.6, :height=> 27.9}
	end
	
	def render(name='rlabel.pdf',mode=:original,renderMode=:normal)
		raise "The format of the label was not set" unless @model
		icol=0
		irow=0
		variables
		report=RGhost::Document.new :paper => @labels[@manufacturer][@model][:paper],:margin=>0
		report.info :Title => @title, :Author => @author, :Subject => @subject, :Creator => @creator, :Producer => @producer

		for data in 0..@data.size-1
			y1=@paperHeight-@marginTop-(@distHeight*irow)
			x1=@marginLeft+(@distWidth*icol)
			text=formatedData(data)
			report.text_area text, :width => @labelWidth-@paddingLR*2, :x => x1+@paddingLR, :y => y1-@paddingTop

			report.rectangle_link :url=> "http://www.apensystem.com",:width => @labelWidth, :height => @labelHeight, :x => x1, :y => y1-@labelHeight,:color => :blue if mode==:original
			report.frame   :width => @labelWidth, :height => @labelHeight, :x => x1, :y => y1-@labelHeight, :content => {:fill => false} if mode==:draft

			icol+=1
			irow+=1 if icol==@labels[@manufacturer][@model][:cols]
			icol=0 if icol==@labels[@manufacturer][@model][:cols]
			report.call :next_page if irow==@labels[@manufacturer][@model][:rows] and data < @data.size-1
			irow=0 if irow==@labels[@manufacturer][@model][:rows]
		end
		
		rg=report.render :pdf, :filename => "#{name}" if renderMode==:normal
		report.render_stream(:pdf), :filename => "#{name}" if renderMode==:stream
		#p rg.output
	end
end
