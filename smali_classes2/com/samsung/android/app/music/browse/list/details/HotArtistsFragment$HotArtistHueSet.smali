.class Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HotArtistHueSet"
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    .line 323
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "9"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "9d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    const-string v1, "4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .line 335
    sget-object v0, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Landroid/view/View;I)V
    .locals 0

    .line 320
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->b(Landroid/view/View;I)V

    return-void
.end method

.method private static b(Landroid/view/View;I)V
    .locals 1

    if-ltz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 343
    check-cast p0, Landroid/widget/ImageView;

    .line 344
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 343
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/HotArtistsFragment$HotArtistHueSet;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/util/graphics/HueColorDrawable;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 346
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
