.class final Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BlurBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;->INSTANCE:Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/net/Uri;
    .locals 1

    .line 69
    invoke-static {p1}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "MArtworkUtils.getArtWorkUri(it)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/BlurBackground$cp2Uri$1;->invoke(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
