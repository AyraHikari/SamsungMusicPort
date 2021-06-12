.class public Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/samsung/android/app/music/list/common/GridItemDecorator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)Landroid/app/Activity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;)Lcom/samsung/android/app/music/list/common/GridItemDecorator;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->b:Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/list/common/GridItemDecorator;)Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;->b:Lcom/samsung/android/app/music/list/common/GridItemDecorator;

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;
    .locals 2

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager;-><init>(Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$Builder;Lcom/samsung/android/app/music/browse/widget/AutoColumnGridLayoutManager$1;)V

    return-object v0
.end method
