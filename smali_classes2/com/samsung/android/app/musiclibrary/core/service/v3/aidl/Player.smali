.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Tag;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;
.end method

.method public abstract getPlayQueue()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayQueue;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract sendCustom(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendCustom(Ljava/lang/String;Ljava/lang/String;)V
.end method
