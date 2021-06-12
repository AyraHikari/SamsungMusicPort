.class public Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiddenTrackException"
.end annotation


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 79
    iput p1, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;->errorCode:I

    return v0
.end method
