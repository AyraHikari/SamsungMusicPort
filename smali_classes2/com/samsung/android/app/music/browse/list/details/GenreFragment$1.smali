.class Lcom/samsung/android/app/music/browse/list/details/GenreFragment$1;
.super Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/details/GenreFragment;->a()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/details/GenreFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/details/GenreFragment;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/GenreFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/GenreFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/GenreFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/GenreFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/GenreFragment;->a(Lcom/samsung/android/app/music/browse/list/details/GenreFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/GenreFragment$1;->a:Lcom/samsung/android/app/music/browse/list/details/GenreFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/details/GenreFragment;->a(Lcom/samsung/android/app/music/browse/list/details/GenreFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/GenreBaseModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/GenreBaseModel;->getGenreName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
