.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestPublisher"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    return-void
.end method

.method private b(Landroid/os/Handler;)V
    .locals 1

    .line 205
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/OnlyLastArtworkPublishHandler;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 2

    .line 191
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->e(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Handler;)V
    .locals 4

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->b(Landroid/os/Handler;)V

    .line 163
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    .line 164
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;-><init>(Landroid/os/Handler;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public a(Landroid/os/Handler;Landroid/os/Parcelable;)V
    .locals 3

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->b(Landroid/os/Handler;)V

    .line 169
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    .line 170
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;-><init>(Landroid/os/Handler;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;I)V
    .locals 3

    .line 174
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/ImageViewPublisher;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V
    .locals 2

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public b()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;
    .locals 2

    .line 195
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->b(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    return-object p0
.end method

.method public c()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;
    .locals 2

    .line 200
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    return-object p0
.end method
