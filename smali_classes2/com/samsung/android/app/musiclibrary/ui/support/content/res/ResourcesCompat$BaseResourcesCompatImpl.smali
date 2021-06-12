.class Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$ResourcesCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseResourcesCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$1;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat$BaseResourcesCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .locals 0

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
