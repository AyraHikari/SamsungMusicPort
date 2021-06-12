.class Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->InitBargeInRecognizer(Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

.field final synthetic val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$1;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;->onResults([Ljava/lang/String;)V

    return-void
.end method
