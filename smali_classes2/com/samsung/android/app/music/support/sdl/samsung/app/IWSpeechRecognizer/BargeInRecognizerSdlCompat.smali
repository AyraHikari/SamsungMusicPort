.class public Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;
    }
.end annotation


# instance fields
.field private final mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    return-void
.end method


# virtual methods
.method public InitBargeInRecognizer(Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    new-instance v1, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    return-void
.end method

.method public getIntBargeInResult()I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    return v0
.end method

.method public isBargeInEnabled()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled()Z

    move-result v0

    return v0
.end method

.method public startBargeIn(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    return-void
.end method

.method public stopBargeIn()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    return-void
.end method
