.class public interface abstract Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayContentResultListener"
.end annotation


# virtual methods
.method public abstract a(ILjava/lang/Throwable;)V
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;)V
    .param p1    # Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
