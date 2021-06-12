.class public final Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

.field public static final KEY_FAVORITE_TYPE:Ljava/lang/String; = "favorite_type"

.field public static final KEY_IS_LOCAL:Ljava/lang/String; = "is_local"

.field public static final TAG:Ljava/lang/String; = "MaxPopupDialogFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1624
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Ljava/lang/String;Z)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Ljava/lang/String;ZZ)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->Companion:Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance(Ljava/lang/String;ZZ)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .line 1627
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1628
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v2, "favorite_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1629
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v2, "is_local"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1630
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const-string v5, "key_finish_activity"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v4, :cond_4

    goto/16 :goto_3

    .line 1635
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x1

    const/16 v7, 0x3e8

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-string v1, "5"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0b013f

    .line 1669
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0d0019

    invoke-static {v2, v3, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$getQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "824"

    :goto_0
    move-object v9, v3

    goto/16 :goto_2

    :pswitch_2
    const-string v1, "3"

    .line 1635
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0b013e

    .line 1661
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 1662
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    const v8, 0x7f0b013c

    invoke-virtual {v2, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "activity!!.getString(R.s\u2026te_max_message_artist_kt)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    .line 1663
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    .line 1661
    array-length v3, v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "822"

    goto :goto_0

    :pswitch_3
    const-string v1, "2"

    .line 1635
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0b013d

    .line 1653
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 1654
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const v8, 0x7f0b013b

    invoke-virtual {v2, v8}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "activity!!.getString(R.s\u2026ite_max_message_album_kt)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    .line 1655
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    .line 1653
    array-length v3, v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "823"

    goto :goto_0

    :pswitch_4
    const-string v2, "1"

    .line 1635
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f0b0140

    if-eqz v1, :cond_7

    .line 1639
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0d001b

    const/16 v5, 0x2710

    invoke-static {v1, v3, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$getQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1644
    :cond_7
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0d001a

    invoke-static {v1, v3, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$getQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "821"

    move-object v2, v1

    move-object v9, v3

    const v1, 0x7f0b0140

    .line 1680
    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1681
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f0b02d3

    .line 1682
    new-instance v2, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;

    move-object v3, v2

    move-object v5, v9

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$onCreateDialog$$inlined$apply$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;Landroid/os/Bundle;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1695
    sget-object v7, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const/4 p1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v8, v9

    move-object v9, p1

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1696
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(acti\u2026eenId)\n        }.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 1676
    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 1677
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "super.onCreateDialog(savedInstanceState)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
