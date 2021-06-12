.class public final Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1699
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1709
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance(Ljava/lang/String;ZZ)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Ljava/lang/String;Z)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;->newInstance$default(Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment$Companion;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Ljava/lang/String;ZZ)Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/samsung/android/app/music/list/favorite/FavoriteType$Def;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1711
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;-><init>()V

    .line 1712
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "favorite_type"

    .line 1713
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_local"

    .line 1714
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "key_finish_activity"

    .line 1715
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1712
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/favorite/MaxPopupDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
