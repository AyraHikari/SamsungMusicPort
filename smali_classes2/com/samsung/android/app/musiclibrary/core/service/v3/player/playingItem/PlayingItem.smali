.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/playingUri/PlayingUri;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
.end method

.method public abstract release()V
.end method

.method public abstract sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendCustomAction(Ljava/lang/String;Ljava/lang/String;)V
.end method
