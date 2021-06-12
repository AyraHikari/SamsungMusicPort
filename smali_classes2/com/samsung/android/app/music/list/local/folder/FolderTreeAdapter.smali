.class public Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private f:I

.field private g:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "internalStorageStr"

    const-string v4, "getInternalStorageStr()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sdCardStr"

    const-string v4, "getSdCardStr()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "privateStr"

    const-string v4, "getPrivateStr()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b:Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 25
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$internalStorageStr$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$internalStorageStr$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->c:Lkotlin/Lazy;

    .line 29
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$sdCardStr$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$sdCardStr$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->d:Lkotlin/Lazy;

    .line 33
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$privateStr$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$privateStr$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->e:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->f:I

    .line 38
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->g:I

    .line 39
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->j:I

    .line 40
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->k:I

    .line 41
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->l:I

    .line 42
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->m:I

    .line 43
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->n:I

    const-wide/16 v0, 0x1

    .line 45
    iput-wide v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->o:J

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->p:Ljava/util/HashMap;

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Landroid/database/Cursor;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method protected a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 69
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    move-object p3, p1

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400fd

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    new-instance p3, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    const-string v1, "subTitle"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    goto :goto_0

    .line 53
    :cond_1
    new-instance p3, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    .line 54
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04017c

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v2, "LayoutInflater.from(frag\u2026lse\n                    )"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p3, v0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 58
    iget-object p1, p3, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->textView1:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object p1, p3, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->textView2:Landroid/widget/TextView;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p3

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->m:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "key_ids_map"

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->p:Ljava/util/HashMap;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "key_last_converted_id"

    .line 218
    iget-wide v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->o:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 76
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const p2, 0x7f130300

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "holder.itemView.findView\u2026TextView>(R.id.sub_title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "holder.itemView.findView\u2026TextView>(R.id.sub_title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "holder.itemView.findView\u2026TextView>(R.id.sub_title)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->c()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->a()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 79
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result p2

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x8

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_4
    const/4 p2, 0x0

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a(Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;I)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 205
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->l:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 12

    if-eqz p1, :cond_2

    const-string v0, "key_ids_map"

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 225
    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->p:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.Long> /* = java.util.HashMap<kotlin.String, kotlin.Long> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "key_last_converted_id"

    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 228
    iput-wide v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->o:J

    .line 231
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "UiList-FT"

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreState() map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->p:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "map.values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastConvertId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected b(Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;I)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    .line 120
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    goto/16 :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v2, "fragment.activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->textView1:Landroid/widget/TextView;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    iget v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->f:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->textView2:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    iget p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->j:I

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget p2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->m:I

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 106
    iget v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->k:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d001c

    const/4 v4, 0x1

    .line 108
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 107
    invoke-virtual {v1, v3, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p2, 0x7f0d0026

    .line 110
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 109
    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;->textView2:Landroid/widget/TextView;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    .line 207
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public final d(I)Ljava/lang/String;
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public e(I)J
    .locals 2

    .line 200
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->e(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public final f(I)I
    .locals 2

    .line 211
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object p1

    .line 212
    iget v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->n:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->m:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getItemId(I)J
    .locals 4

    .line 147
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemId(I)J

    move-result-wide v0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getHeaderViewCount()I

    move-result v2

    if-lt p1, v2, :cond_2

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(I)I

    move-result p1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 163
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->p:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 177
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result v0

    .line 178
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getItemId(I)J

    move-result-wide v1

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getHeaderViewCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v3, -0x2

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x3

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    const/16 v0, -0x3ea

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e9

    :goto_0
    return v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->initColIndex(Landroid/database/Cursor;)V

    const-string v0, "displayed_title"

    .line 127
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->f:I

    const-string v0, "number_of_sub_folders"

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->m:I

    const-string v0, "number_of_total_sub_folders"

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->n:I

    const-string v0, "number_of_tracks"

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->k:I

    const-string v0, "path"

    .line 131
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->g:I

    const-string v0, "artist"

    .line 132
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->j:I

    const-string v0, "file_type"

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->l:I

    const-string v0, "folder_bucket_id"

    .line 135
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->keywordIndex:I

    const-string v0, "album_id"

    .line 136
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->thumbnailIdIndex:I

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->privateModeColIndex:I

    const-string v0, "_id"

    .line 138
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->h(I)V

    const-string p1, "UiList-FT"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " initColIndex() text1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->text1Index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->text2Index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->thumbnailIdIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a(Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a(Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/folder/FolderViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
