////
////  PlaySoundsViewController.swift
////  Pitch Perfect
////
////  Created by Hassan on 2015-04-07.
////  Copyright (c) 2015 Hassan. All rights reserved.
////
//
//import UIKit
//import AVFoundation
//
//class PlaySoundsViewController: UIViewController {
//    
//    var audioPlayer: AVAudioPlayer!
//    var receviedAudio:RecordedAudio!
//    var audioEngine: AVAudioEngine!
//    var audioFile:AVAudioFile!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        audioEngine = AVAudioEngine()
//        audioFile = AVAudioFile(forReading: receviedAudio.filePathUrl, error: nil)
//        //        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//        //            var filePathUrl = NSURL.fileURLWithPath(filePath)
//        //            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
//        //            audioPlayer.enableRate = true
//        //        } else {
//        //            println("Error Getting mp3 file")
//        //        }
//        // Do any additional setup after loading the view.
//        
//        audioPlayer = AVAudioPlayer(contentsOfURL: receviedAudio.filePathUrl, error: nil)
//        audioPlayer.enableRate = true
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    @IBAction func playSlowAudio(sender: UIButton) {
//        audioPlayer.stop()
//        audioPlayer.rate = 0.5
//        audioPlayer.play()
//    }
//    
//    @IBAction func playFastAudio(sender: UIButton) {
//        audioPlayer.stop()
//        audioPlayer.rate = 2.0
//        audioPlayer.play()
//    }
//    
//    @IBAction func playChipmunkAudio(sender: UIButton) {
//        playAudioWithVariablePitch(1000)
//    }
//    
//    @IBAction func playDarthVAudio(sender: UIButton) {
//        playAudioWithVariablePitch(-1000)
//        
//    }
//    
//    func playAudioWithVariablePitch(pitch: Float){
//        audioPlayer.stop()
//        audioEngine.stop()
//        audioEngine.reset()
//        
//        var audioPlayerNode = AVAudioPlayerNode()
//        audioEngine.attachNode(audioPlayerNode)
//        
//        var changePitchEffect = AVAudioUnitTimePitch()
//        changePitchEffect.pitch = pitch
//        audioEngine.attachNode(changePitchEffect)
//        
//        audioEngine.connect(audioPlayerNode, to: changePitchEffect, format: nil)
//        audioEngine.connect(changePitchEffect, to: audioEngine.outputNode, format: nil)
//        
//        audioPlayerNode.scheduleFile(audioFile, atTime: nil, completionHandler: nil)
//        audioEngine.startAndReturnError(nil)
//        
//        audioPlayerNode.play()
//    }
//    
//    @IBAction func stopPlaying(sender: UIButton) {
//        audioPlayer.stop()
//        audioPlayer.currentTime = 0.0
//    }
//    
//    
//    /*
//    // MARK: - Navigation
//    
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//    // Get the new view controller using segue.destinationViewController.
//    // Pass the selected object to the new view controller.
//    }
//    */
//    
//}
