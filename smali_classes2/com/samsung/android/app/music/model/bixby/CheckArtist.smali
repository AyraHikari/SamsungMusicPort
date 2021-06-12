.class public Lcom/samsung/android/app/music/model/bixby/CheckArtist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/bixby/CheckArtist$Result;
    }
.end annotation


# instance fields
.field private existYn:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/CheckArtist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isArtist()Z
    .locals 2

    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/model/bixby/CheckArtist;->existYn:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
