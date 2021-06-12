.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;-><init>()V

    return-void
.end method

.method private final a(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :sswitch_0
    const p1, 0x110001

    goto :goto_0

    :sswitch_1
    const p1, 0x10007

    goto :goto_0

    :sswitch_2
    const p1, 0x10003

    goto :goto_0

    :sswitch_3
    const p1, 0x10002

    :goto_0
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x100002 -> :sswitch_3
        0x100003 -> :sswitch_2
        0x100007 -> :sswitch_1
        0x110001 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;I)I
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;->a(I)I

    move-result p0

    return p0
.end method

.method private final a(ILjava/lang/String;J)Landroid/support/v4/app/Fragment;
    .locals 2

    const v0, 0x110001

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 533
    new-instance p2, Ljava/lang/RuntimeException;

    .line 534
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not Matched ListType : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 529
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment$Companion;

    if-nez p2, :cond_0

    .line 530
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 529
    invoke-virtual {p1, v0, v1, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment$Companion;->a(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 526
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment$Companion;

    if-nez p2, :cond_1

    .line 527
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 526
    invoke-virtual {p1, v0, v1, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment$Companion;->a(JJ)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 525
    :cond_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment$Companion;->a(J)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AllTrackFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x100002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;ILjava/lang/String;J)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 511
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;->a(ILjava/lang/String;J)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)I
    .locals 1

    const v0, 0x10007

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    :pswitch_0
    const p1, 0x100003

    goto :goto_0

    :pswitch_1
    const p1, 0x100002

    goto :goto_0

    :cond_0
    const p1, 0x100007

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;I)I
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity$Companion;->b(I)I

    move-result p0

    return p0
.end method
