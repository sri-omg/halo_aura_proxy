#! /usr/bin/ruby
require 'rubygems'
require 'sinatra'
require 'soap/rpc/driver'

# $stdout.sync = true
WAIT_TIME = 0

post "/answers" do
  content_type 'application/html', :charset => 'utf-8'
<<-response
<div class="answer-page">

  <p class="question"><span class="q-label">Q.</span> What is a DNA template?</p>

  <p class="answer"><span class="a-label">A.</span> The dna template is a
    <a class="keywords" href="dna.html">deoxyribonucleoside monophosphate</a>, a phosphate group, a deoxyribose, and a
    <a class="keywords" href="dna-strand.html">dna strand</a>. The dna template is the agent of transfer of a genetic
    code. The dna template is having region a <a class="keywords" href="5'.html">5 prime end</a> and a
    <a class="keywords" href="3'.html">3 prime end</a>.<a name='G20435'></a></p>

  <!-- show/hide buttons -->
  <div class="explain-button" id='plusButtonG20435' onclick='toggleSummaryOrDetailG20435(this);' style='display:inline'>
    <a href='javascript:void(0)'>Explain</a>
  </div>
  <div class="explain-button" id='minusButtonG20435' onclick='toggleSummaryOrDetailG20435(this);' style='display:none'>
    <a href='javascript:void(0)'>Hide Explanation</a>
  </div>

  <div class="answer-explanation" id='summaryG20435' style='display:block'><!-- short explanation --></div>

  <div class="answer-explanation" id='detailG20435' style='display:none'><!-- long explanation -->
    <p>A deoxyribonucleoside monophosphate deoxyribonucleoside monophosphate is a part of a dna template dna template
      .The deoxyribonucleoside monophosphate is a phosphate group and a nucleoside.</p>

    <p>A phosphate group is a part of a dna template dna template .The phosphate group.</p>

    <p>A deoxyribose is a part of a dna template dna template .The deoxyribose.</p>

    <p>A dna strand dna strand is a part of a dna template dna template .The dna strand is a gene and a
      deoxyribonucleoside monophosphate. The dna strand is the agent of transfer of a genetic code. The dna strand is
      having region a 5 prime end and a 3 prime end.</p>

    <p>A dna strand dna strand is a part of a dna template dna template .The dna strand is a gene and a
      deoxyribonucleoside monophosphate. The dna strand is the agent of transfer of a genetic code. The dna strand is
      having region a 5 prime end and a 3 prime end.</p>

    <p>A deoxyribonucleoside monophosphate deoxyribonucleoside monophosphate is a part of a dna template dna template
      .The deoxyribonucleoside monophosphate is a phosphate group and a nucleoside.</p>
  </div>
</div>

response
end

get "*" do
  puts "#{params[:splat]} 404 not found"
  pass
end

def wait
  return if WAIT_TIME == 0
  puts "waiting"
  WAIT_TIME.times do
    print "."
    sleep 1
  end
  puts "replying"
end
