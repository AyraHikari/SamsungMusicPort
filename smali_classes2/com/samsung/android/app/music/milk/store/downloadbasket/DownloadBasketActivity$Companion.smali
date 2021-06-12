.class public final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, -0x1

    .line 484
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 486
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 487
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    .line 491
    check-cast p2, Ljava/lang/CharSequence;

    const-string v4, "@"

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 521
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 522
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 523
    :cond_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 524
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 491
    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 525
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    .line 529
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_6

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_5

    .line 531
    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, [Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 530
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move-object p2, v1

    .line 491
    :goto_2
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 492
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 493
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 494
    check-cast v4, Ljava/util/Collection;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_8

    .line 498
    new-instance p2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f0b01f1

    .line 499
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 501
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p3, 0x7f0b01f0

    .line 502
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "context.getString(R.stri\u2026ilk_maximum_reached_desc)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 501
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/CharSequence;

    .line 500
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const-string p3, "923"

    .line 504
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f0b02d3

    const-string v0, "9370"

    .line 505
    invoke-virtual {p2, p3, v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object p2

    .line 506
    invoke-virtual {p2}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p3, "maximumExceed"

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 510
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "key_track_ids"

    const-string v2, "@"

    .line 511
    check-cast v2, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "key_tab_id"

    .line 512
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :goto_3
    return-void

    :cond_9
    :goto_4
    return-void
.end method
