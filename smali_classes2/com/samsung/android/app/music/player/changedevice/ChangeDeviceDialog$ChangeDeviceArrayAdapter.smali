.class Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeDeviceArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 370
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 371
    iput-object p1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->c:Landroid/content/Context;

    .line 372
    iput-object p3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a:Ljava/util/ArrayList;

    .line 373
    iput-object p4, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    .line 429
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x0

    const v2, 0x919799

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f100087

    .line 422
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    const v0, 0x7f0200c3

    .line 423
    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f13030a

    .line 396
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 400
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 413
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a()[I

    move-result-object v0

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    if-nez v0, :cond_0

    const p1, 0x7f0200c3

    .line 404
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 408
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V
    .locals 3

    const v0, 0x7f13030b

    .line 433
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 434
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f13030c

    .line 436
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 437
    iget-object v1, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 438
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f0f00d3

    .line 439
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0b00da

    .line 440
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    const v2, 0x7f0f004b

    .line 442
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const p1, 0x7f0b00db

    goto :goto_0

    :cond_1
    const p1, 0x7f0b00dc

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 379
    iget-object p2, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0400dc

    const/4 v1, 0x0

    .line 380
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 382
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView() position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " deviceId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->a(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V

    .line 390
    invoke-direct {p0, p3, p2}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog$ChangeDeviceArrayAdapter;->b(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;Landroid/view/View;)V

    .line 391
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_2
    :goto_0
    const-string p1, "getView() device list is empty."

    .line 383
    invoke-static {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->a(Ljava/lang/String;)V

    return-object p2
.end method
