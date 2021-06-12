.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;
    }
.end annotation


# virtual methods
.method public abstract getPlayingItem(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
