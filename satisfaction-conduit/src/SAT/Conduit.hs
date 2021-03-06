module SAT.Conduit (
  S.CNF,
  S.Lit(..),
  S.fromSimpleList,
  S.Solution,
  S.satisfyingAssignment,
  solutionSource
  ) where

import Control.Monad.IO.Class ( liftIO )
import qualified Data.Conduit as C
import qualified Satisfaction as S

solutionSource :: S.CNF a -> C.Source IO (S.Solution a)
solutionSource cnf = undefined
  -- liftIO (S.solve cnf) >>= go
  -- where
  --   go Nothing = return ()
  --   go (Just sol) = do
  --     C.yield sol
  --     liftIO undefined >>= go
