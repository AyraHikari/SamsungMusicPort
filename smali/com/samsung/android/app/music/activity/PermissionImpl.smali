.class public final Lcom/samsung/android/app/music/activity/PermissionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/IPermissionTnC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Activity;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionImpl;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/activity/PermissionImpl;->c:Ljava/util/ArrayList;

    .line 449
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 452
    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;

    const v1, 0x7f020050

    const v2, 0x7f0b02df

    const v3, 0x7f0b02dd

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;-><init>(III)V

    .line 450
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.permission.READ_PHONE_STATE"

    .line 460
    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;

    const v1, 0x7f02004f

    const v2, 0x7f0b02d9

    const v3, 0x7f0b02db

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;-><init>(III)V

    .line 458
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.permission.GET_ACCOUNTS"

    .line 468
    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;

    const v1, 0x7f02004e

    const v2, 0x7f0b02da

    const v3, 0x7f0b02dc

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;-><init>(III)V

    .line 466
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionImpl;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "button"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1302da

    .line 478
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "parent.findViewById<Text\u2026ew>(R.id.help_page_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v2, 0x7f0b0155

    .line 479
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.help_page_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 478
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1302e2

    .line 481
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "parent.findViewById<Text\u2026d.permission_description)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v2, 0x7f0b02de

    .line 482
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "context.getString(R.stri\u2026ission_guide_description)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 483
    invoke-static {v0}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 481
    array-length v0, v3

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1302e3

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "parent.findViewById(R.id.permission_content)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    .line 486
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PermissionImpl;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 506
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/PermissionImpl;->b:Landroid/app/Activity;

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400c1

    invoke-virtual {v3, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 490
    iget-object v4, p0, Lcom/samsung/android/app/music/activity/PermissionImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v4, "permissionItems[it]!!"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;

    const v4, 0x7f1302e4

    .line 491
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f13015f

    .line 492
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f13006c

    .line 493
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/PermissionImpl$PermissionItem;->c()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 487
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method
