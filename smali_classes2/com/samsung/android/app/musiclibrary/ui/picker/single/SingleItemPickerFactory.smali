.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    sparse-switch p1, :sswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not Matched ListType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 33
    :sswitch_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v0, "6003"

    goto :goto_0

    .line 45
    :sswitch_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/FolderFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v0, "6006"

    goto :goto_0

    .line 41
    :sswitch_2
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v0, "6005"

    goto :goto_0

    .line 37
    :sswitch_3
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    const-string v0, "6004"

    .line 52
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_3
        0x10003 -> :sswitch_2
        0x10007 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method
