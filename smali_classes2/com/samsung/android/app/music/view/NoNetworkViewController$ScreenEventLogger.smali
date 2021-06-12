.class public interface abstract Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/view/NoNetworkViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScreenEventLogger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;,
        Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;,
        Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;II)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract b(Landroid/content/Context;II)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
