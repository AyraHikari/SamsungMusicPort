.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final C_:Z

.field public static final D_:Z

.field public static final E_:Z

.field public static final r:Z

.field public static final s:Z

.field public static final u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x18ed7

    if-ge v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->C_:Z

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->C_:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->D_:Z

    .line 23
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->C_:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->r:Z

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->s:Z

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->E_:Z

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->u:Z

    return-void
.end method
