.class public final Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/navigate/Navigable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;->a:Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;I)I
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;->b(I)I

    move-result p0

    return p0
.end method

.method private final b(I)I
    .locals 2

    .line 91
    invoke-static {p1}, Lcom/samsung/android/app/music/util/ListUtils;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method private final c(I)Z
    .locals 1

    const v0, 0x10030

    if-eq p1, v0, :cond_0

    const v0, 0x110001

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10006
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)Ljava/lang/Integer;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x0

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_0
        0x10003 -> :sswitch_0
        0x10004 -> :sswitch_0
        0x10006 -> :sswitch_0
        0x10007 -> :sswitch_0
        0x10008 -> :sswitch_0
        0x10030 -> :sswitch_0
        0x100002 -> :sswitch_0
        0x100003 -> :sswitch_0
        0x100004 -> :sswitch_0
        0x100006 -> :sswitch_0
        0x100007 -> :sswitch_0
        0x100008 -> :sswitch_0
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 9

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;-><init>(Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;Landroid/support/v4/app/Fragment;I)V

    .line 36
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl;->c(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->invoke()V

    return v2

    :cond_0
    if-nez p6, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/app/music/navigate/NavigableMyMusicImpl$navigateInternal$1;->invoke()V

    :cond_1
    const/4 p6, 0x0

    .line 43
    check-cast p6, Ljava/lang/Integer;

    if-eqz p5, :cond_2

    const-string v0, "key_group_type"

    .line 44
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    const-string p6, "key_group_type"

    .line 45
    invoke-virtual {p5, p6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :cond_2
    const-string p5, "Navi"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigateInternal() listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", groupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", containerFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p5, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x0

    if-eqz p1, :cond_5

    .line 54
    invoke-static {p2, p3, p4, p6}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 60
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string p1, "containerFragment.childFragmentManager"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f130011

    .line 62
    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 63
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    return v2

    :cond_3
    const-string p1, "Navi"

    const-string p2, "navigate() failed no current fragment"

    .line 65
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p5

    :cond_4
    return p5

    :cond_5
    return p5
.end method
