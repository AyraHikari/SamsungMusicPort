.class public final Lcom/samsung/android/app/music/fcm/smp/SmpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 42
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->b:[Ljava/lang/String;

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic a()[Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->b(Landroid/content/Context;Z)V

    return-void
.end method
