.class public Lcom/samsung/android/app/music/list/ListShareableImpl;
.super Lcom/samsung/android/app/music/AbsShareableWithDialog;
.source "SourceFile"


# instance fields
.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;IZ)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "share_music_from_list"

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;-><init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->e:I

    iput-boolean p3, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->f:Z

    .line 19
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 21
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 27
    new-instance p2, Lcom/samsung/android/app/music/list/ListShareableImpl$1;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl$1;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/ListShareableImpl;[J)Z
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;->a([J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/ListShareableImpl;[J)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;->b([J)V

    return-void
.end method


# virtual methods
.method public b()[J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->e:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v0

    return-object v0
.end method

.method public m_()V
    .locals 5

    .line 31
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->f:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iget v1, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->e:I

    new-instance v2, Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl$share$1;-><init>(Lcom/samsung/android/app/music/list/ListShareableImpl;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog;->m_()V

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    .line 41
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1024"

    .line 43
    iget-object v3, p0, Lcom/samsung/android/app/music/list/ListShareableImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v3

    int-to-long v3, v3

    .line 40
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
