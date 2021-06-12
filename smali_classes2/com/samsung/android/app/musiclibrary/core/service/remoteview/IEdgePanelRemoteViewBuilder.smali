.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;
    }
.end annotation


# virtual methods
.method public abstract buildHelp()Landroid/widget/RemoteViews;
.end method

.method public abstract setCardViews(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;"
        }
    .end annotation
.end method

.method public abstract setChannelName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
.end method

.method public abstract setDescription(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder;
.end method
