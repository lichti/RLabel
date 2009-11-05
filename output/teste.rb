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
@rl.addLabel(['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C'])
#@rl.data =[]
#@rl.data = [['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C'],['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C']]
#@rl.data << ['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C'])
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
@rl.addLabel(['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C'])
#@rl.data =[]
#@rl.data = [['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C'],['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C']]
#@rl.data << ['A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A','B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B','C C C C C C C C C C C C C C C C C C C C C'])
@rl.save('Pimaco-6080.pdf')
@rl.saveDraft('Pimaco-6080-Draft.pdf')
