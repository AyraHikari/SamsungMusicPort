.class public Lcom/samsung/android/app/music/help/NoticeListActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NoticeListActivity"


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity;->b:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/help/NoticeListActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/help/NoticeListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method private b()V
    .locals 2

    const v0, 0x7f130073

    .line 60
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b01f7

    .line 63
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/help/NoticeListActivity;)Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/help/NoticeListActivity;->d:Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 69
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->c(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 70
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/help/NoticeListActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/app/music/help/NoticeListActivity$1;-><init>(Lcom/samsung/android/app/music/help/NoticeListActivity;Landroid/app/Activity;)V

    .line 71
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->a(Lio/reactivex/SingleObserver;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04012a

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->b()V

    const p1, 0x7f13039d

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity;->b:Landroid/widget/ListView;

    const p1, 0x7f13039e

    .line 54
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/NoticeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity;->c:Landroid/widget/TextView;

    .line 55
    new-instance p1, Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;

    const v0, 0x7f040126

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/help/NoticeListActivity;->d:Lcom/samsung/android/app/music/help/NoticeListActivity$NoticeAdapter;

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/help/NoticeListActivity;->c()V

    return-void
.end method
