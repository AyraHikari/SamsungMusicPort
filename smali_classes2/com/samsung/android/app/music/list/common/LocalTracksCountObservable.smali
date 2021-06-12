.class public interface abstract Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getLocalTracksCount()I
.end method

.method public abstract setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .param p1    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateLocalTrackCount()V
.end method
