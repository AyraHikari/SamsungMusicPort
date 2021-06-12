.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)Landroid/support/v4/app/Fragment;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    .line 55
    new-instance p2, Ljava/lang/RuntimeException;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not Matched ListType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 16
    :sswitch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$Companion;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_0

    const-string p2, "6073"

    const-string v0, "510"

    goto :goto_0

    :cond_0
    const-string p2, "2604"

    const-string v0, "225"

    goto :goto_0

    .line 46
    :sswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment$Companion;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/FolderContainerFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_1

    const-string p2, "6076"

    const-string v0, "515"

    goto :goto_0

    :cond_1
    const-string p2, "2607"

    const-string v0, "230"

    goto :goto_0

    .line 36
    :sswitch_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistContainerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistContainerFragment$Companion;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistContainerFragment$Companion;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/ArtistContainerFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_2

    const-string p2, "6075"

    const-string v0, "513"

    goto :goto_0

    :cond_2
    const-string p2, "2606"

    const-string v0, "228"

    goto :goto_0

    .line 26
    :sswitch_3
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumContainerFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumContainerFragment$Companion;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumContainerFragment$Companion;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumContainerFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_3

    const-string p2, "6074"

    const-string v0, "511"

    goto :goto_0

    :cond_3
    const-string p2, "2605"

    const-string v0, "226"

    .line 59
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_2
        0x10007 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
