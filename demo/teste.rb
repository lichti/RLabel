#require 'rubygems'
#require 'RLabel'

#require '/home/gustavo/.gem/ruby/1.8/gems/RLabel/lib/RLabel.rb'
require '/home/gustavo/Dev/etiqueta-ruby/RLabel/lib/RLabel.rb'

@rl=RLabel.new
@rl.title = "Teste do RLabel"
@rl.author = "Gustavo Lichti Mendonça"
@rl.subject = "RLabel"
@rl.creator = "RLabel/Rghost"
@rl.producer = "RLabel/Rghost"
@rl.manufacturer(:pimaco)
@rl.model(:P6081)	
@rl.demoData
@rl.addLabel(['A '*41,'B '*43,'C '*20])
#@rl.data =[]
#@rl.data = [['A '*41,'B '*43,'C '*20],['A '*41,'B '*43,'C '*20]]
#@rl.data << ['A '*41,'B '*43,'C '*20]
@rl.save('Pimaco-6081.pdf')
@rl.saveDraft('Pimaco-6081-Draft.pdf')

@rl=RLabel.new
@rl.title = "Teste do RLabel"
@rl.author = "Gustavo Lichti Mendonça"
@rl.subject = "RLabel"
@rl.creator = "RLabel/Rghost"
@rl.producer = "RLabel/Rghost"
@rl.manufacturer(:pimaco)
@rl.model(:P6080)
@rl.demoData
@rl.addLabel(['A '*41,'B '*43,'C '*20])
#@rl.data =[]
#@rl.data = [['A '*41,'B '*43,'C '*20],['A '*41,'B '*43,'C '*20]]
#@rl.data << ['A '*41,'B '*43,'C '*20]
@rl.save('Pimaco-6080.pdf')
@rl.saveDraft('Pimaco-6080-Draft.pdf')
