.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsageHistoryQueryArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->a()V

    .line 131
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->a(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->uri:Landroid/net/Uri;

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->b(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;->b(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->selection:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs$Builder;)V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->selection:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->b()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->projection:[Ljava/lang/String;

    const-string v0, "start_date desc"

    .line 144
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->orderBy:Ljava/lang/String;

    .line 145
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PlayHistory;->a()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment$UsageHistoryQueryArgs;->uri:Landroid/net/Uri;

    return-void
.end method

.method private static b()[Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    .line 150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "history_id"

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "history_title"

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "start_date_local"

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "end_date_local"

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "offer_type"

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
