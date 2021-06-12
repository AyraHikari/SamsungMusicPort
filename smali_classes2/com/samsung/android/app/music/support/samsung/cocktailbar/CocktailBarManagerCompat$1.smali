.class Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;->registerStateListener(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

.field final synthetic val$stateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;->this$0:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat;

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;->val$stateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$1;->val$stateChangedListener:Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;

    new-instance v1, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;-><init>(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarManagerCompat$CocktailBarStateChangedListener;->onCocktailBarStateChanged(Lcom/samsung/android/app/music/support/samsung/cocktailbar/CocktailBarStateInfo;)V

    return-void
.end method
