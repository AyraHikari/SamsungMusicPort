.class final Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$BufferingState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferingState"
.end annotation


# static fields
.field static final BUFFERING:I = 0x10

.field static final NONE:I = 0x0

.field static final PAUSE:I = 0x2

.field static final PLAY:I = 0x1

.field static final PREPARE:I = 0x4

.field static final SEEK:I = 0x8

.field static final WAIT_PREPARE_PLAY:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
