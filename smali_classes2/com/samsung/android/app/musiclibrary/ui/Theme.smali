.class public final Lcom/samsung/android/app/musiclibrary/ui/Theme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/Theme;

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/Theme;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/Theme;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/Theme;->a:Lcom/samsung/android/app/musiclibrary/ui/Theme;

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/samsung/android/app/musiclibrary/ui/Theme;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 15
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/Theme;->b:I

    return v0
.end method
