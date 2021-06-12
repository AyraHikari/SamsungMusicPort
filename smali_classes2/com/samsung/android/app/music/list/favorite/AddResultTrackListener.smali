.class public Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/AddResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener$Companion;

.field private static final TAG_MAX_LOCAL:Ljava/lang/String; = "tag_max_local"

.field private static final TAG_MAX_SERVER:Ljava/lang/String; = "tag_max_server"


# instance fields
.field private final activity:Landroid/support/v4/app/FragmentActivity;

.field private finishActivity:Z

.field private final showDuplicateToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->Companion:Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;ZZ)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->showDuplicateToast:Z

    iput-boolean p3, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->finishActivity:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/FragmentActivity;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1577
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;ZZ)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/music/list/favorite/AddResult;)V
    .locals 7

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1581
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1582
    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1583
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getFlag()I

    move-result v2

    .line 1585
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->showDuplicateToast:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "context"

    .line 1587
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0d0003

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getAddedCount()I

    move-result v6

    invoke-static {v0, v3, v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$getQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1588
    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1590
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x102000b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1591
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1593
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/favorite/AddResult;->getAddedCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->finishActivity:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-void

    :cond_1
    const/4 p1, 0x2

    .line 1596
    invoke-static {v2, p1}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1597
    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "tag_max_local"

    .line 1599
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1600
    sget-object p1, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    const-string v0, "1"

    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->finishActivity:Z

    invoke-virtual {p1, v0, v5, v3}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance(Ljava/lang/String;ZZ)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p1

    const-string v0, "tag_max_local"

    .line 1601
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const/4 p1, 0x4

    .line 1605
    invoke-static {v2, p1}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1606
    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "tag_max_server"

    .line 1608
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1609
    sget-object p1, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    const-string v0, "1"

    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->finishActivity:Z

    invoke-virtual {p1, v0, v4, v2}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance(Ljava/lang/String;ZZ)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p1

    const-string v0, "tag_max_server"

    .line 1610
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    return-void

    .line 1613
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->finishActivity:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_8
    :goto_3
    return-void
.end method
