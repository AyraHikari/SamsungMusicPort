.class public Lcom/samsung/android/app/music/support/sdl/android/content/ContextSdlCompat;
.super Ljava/lang/Object;
.source "ContextSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStartingWindowContentView(Landroid/content/Context;I)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->setStartingWindowContentView(I)V

    return-void
.end method
