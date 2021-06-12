.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageHistoryDetailQueryArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 185
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->a:Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->a()V

    .line 189
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->b(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->b(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->uri:Landroid/net/Uri;

    .line 192
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->c(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;->c(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->selection:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$1;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs$Builder;)V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->selection:Ljava/lang/String;

    .line 199
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "date desc"

    .line 202
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->orderBy:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/detail/UsageHistoryDetailFragment$UsageHistoryDetailQueryArgs;->uri:Landroid/net/Uri;

    return-void
.end method

.method private static b()[Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "history_id"

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "track_title"

    .line 210
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "date_local"

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "device_id"

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
