.class public final Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final localCheckbox:Landroid/widget/CheckBox;

.field private final localItem:Landroid/view/View;

.field private final localText1:Landroid/widget/TextView;

.field private final localText2:Landroid/widget/TextView;

.field private final localText3:Landroid/widget/TextView;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final playlistName:Landroid/widget/TextView;

.field private final serverCheckbox:Landroid/widget/CheckBox;

.field private final serverItem:Landroid/view/View;

.field private final serverText1:Landroid/widget/TextView;

.field private final serverText2:Landroid/widget/TextView;

.field private final serverText3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;Landroid/view/View;I)V
    .locals 5

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 283
    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    const p3, 0x7f1301e1

    .line 289
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->playlistName:Landroid/widget/TextView;

    const p3, 0x7f1301e2

    .line 291
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    .line 292
    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    const v0, 0x7f130170

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localCheckbox:Landroid/widget/CheckBox;

    .line 293
    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    const v1, 0x7f13015f

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localText1:Landroid/widget/TextView;

    .line 295
    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    const v2, 0x7f13006c

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    check-cast p3, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 297
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localText2:Landroid/widget/TextView;

    .line 300
    iget-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    const v4, 0x7f130194

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    check-cast p3, Landroid/widget/TextView;

    .line 302
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iput-object p3, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localText3:Landroid/widget/TextView;

    const p3, 0x7f1301e3

    .line 305
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    .line 306
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverCheckbox:Landroid/widget/CheckBox;

    .line 307
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverText1:Landroid/widget/TextView;

    .line 308
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverText2:Landroid/widget/TextView;

    .line 309
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverText3:Landroid/widget/TextView;

    .line 311
    new-instance p2, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder$onClickListener$1;-><init>(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    .line 319
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 320
    invoke-static {p1}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;->access$getContext$p(Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const p3, 0x101030e

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 323
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 324
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 326
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localItem:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverItem:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final getLocalCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final getLocalText1()Landroid/widget/TextView;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localText1:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLocalText2()Landroid/widget/TextView;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localText2:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getLocalText3()Landroid/widget/TextView;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->localText3:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPlaylistName()Landroid/widget/TextView;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->playlistName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getServerCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public final getServerText1()Landroid/widget/TextView;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverText1:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getServerText2()Landroid/widget/TextView;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverText2:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getServerText3()Landroid/widget/TextView;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog$Adapter$ViewHolder;->serverText3:Landroid/widget/TextView;

    return-object v0
.end method
