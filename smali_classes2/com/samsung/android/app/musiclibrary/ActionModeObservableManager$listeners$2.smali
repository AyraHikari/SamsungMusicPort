.class final Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;",
        "Ljava/lang/ref/WeakReference<",
        "Landroid/support/v4/app/Fragment;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager$listeners$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
