.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;


# virtual methods
.method public abstract hasActiveWidget(Landroid/content/Context;)Z
.end method

.method public abstract updateConfiguration(Landroid/content/Context;)V
.end method

.method public abstract updateHomeWidgetList(Landroid/content/Context;)V
.end method

.method public abstract updateModeChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract updateQueueChanged(Landroid/content/Context;Landroid/os/Bundle;)V
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
