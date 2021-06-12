.class public Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;
.super Ljava/lang/Throwable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayHistoryException"
.end annotation


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 211
    iput p1, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;->errorCode:I

    return v0
.end method
