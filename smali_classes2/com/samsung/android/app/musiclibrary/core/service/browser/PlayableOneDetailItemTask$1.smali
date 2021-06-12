.class Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->retrievePlayableMediaItem(Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Landroid/database/Cursor;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

.field final synthetic val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$subTitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$mediaId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$subTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_big:I

    .line 132
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 133
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;

    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iget-object p4, p4, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    invoke-static {p3, p4, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask;Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 136
    :cond_0
    new-instance p1, Landroid/media/MediaDescription$Builder;

    invoke-direct {p1}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 137
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$mediaId:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, p3}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$title:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$subTitle:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1, p2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object p1

    .line 141
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    new-instance p3, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 p4, 0x2

    invoke-direct {p3, p1, p4}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableOneDetailItemTask$1;->val$data:Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p1, p2}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
