.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty<",
        "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>([Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;->a:[Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 362
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 363
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 364
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 365
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v0, Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Landroid/graphics/Paint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Landroid/graphics/Paint;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;->a:[Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;->a(Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;->b:Landroid/graphics/Paint;

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$paintDelegate$1;->a(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method
