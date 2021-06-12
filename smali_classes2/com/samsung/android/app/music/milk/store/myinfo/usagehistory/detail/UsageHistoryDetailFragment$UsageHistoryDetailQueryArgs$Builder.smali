.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Landroid/net/Uri;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;
    .locals 2

    .line 246
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$1;)V

    return-object v0
.end method
