.class Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;->a:Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResults([Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;->a:Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;)Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->getIntBargeInResult()I

    move-result p1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;->a:Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;I)V

    return-void
.end method
