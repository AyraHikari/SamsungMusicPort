.class public Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 18
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$MarshmallowResourcesCompatImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a:Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;->b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
