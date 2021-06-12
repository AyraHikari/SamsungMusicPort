.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;


# virtual methods
.method public abstract clearRemoteViews()V
.end method

.method public abstract isEdgePanelVisible()Z
.end method

.method public abstract updateCardViewItems(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)V"
        }
    .end annotation
.end method
